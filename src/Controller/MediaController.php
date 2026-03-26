<?php

namespace App\Controller;

use App\Entity\Media;
use App\Repository\MediaRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class MediaController extends AbstractController
{
    #[Route('/admin/media', name: 'app_media_index')]
    public function index(MediaRepository $mediaRepository): Response
    {
        return $this->render('admin/media/index.html.twig', [
            'medias' => $mediaRepository->findBy([], ['uploadedAt' => 'DESC']),
        ]);
    }

    #[Route('/admin/media/upload', name: 'app_media_upload', methods: ['POST'])]
    public function upload(Request $request, EntityManagerInterface $em, SluggerInterface $slugger): Response
    {
        $file = $request->files->get('media_file');

        if (!$file) {
            $this->addFlash('error', 'Aucun fichier sélectionné.');
            return $this->redirectToRoute('app_media_index');
        }

        $originalFilename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
        $safeFilename = $slugger->slug($originalFilename);
        $newFilename = $safeFilename . '-' . uniqid() . '.' . $file->guessExtension();

        try {
            $file->move(
                $this->getParameter('kernel.project_dir') . '/public/uploads/media',
                $newFilename
            );
        } catch (FileException $e) {
            $this->addFlash('error', 'Erreur lors de l\'upload.');
            return $this->redirectToRoute('app_media_index');
        }

        $media = new Media();
        $media->setFilename($newFilename);
        $media->setOriginalName($file->getClientOriginalName());
        $media->setMimeType($file->getClientMimeType());
        $media->setSize(0);
        $media->setAlt($request->request->get('alt', ''));
        $media->setUploadedAt(new \DateTimeImmutable());

        $em->persist($media);
        $em->flush();

        $this->addFlash('success', 'Image uploadée avec succès.');
        return $this->redirectToRoute('app_media_index');
    }

    #[Route('/admin/media/delete/{id}', name: 'app_media_delete', methods: ['POST'])]
    public function delete(Media $media, EntityManagerInterface $em): Response
    {
        $filepath = $this->getParameter('kernel.project_dir') . '/public/uploads/media/' . $media->getFilename();
        if (file_exists($filepath)) {
            unlink($filepath);
        }

        $em->remove($media);
        $em->flush();

        $this->addFlash('success', 'Image supprimée.');
        return $this->redirectToRoute('app_media_index');
    }
}