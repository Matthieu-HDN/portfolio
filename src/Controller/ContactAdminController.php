<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\Contact1Type;
use App\Repository\ContactRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/contact/admin')]
final class ContactAdminController extends AbstractController
{
    #[Route(name: 'app_contact_admin_index', methods: ['GET'])]
    public function index(ContactRepository $contactRepository): Response
    {
        return $this->render('admin/contact/index.html.twig', [
            'contacts' => $contactRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_contact_admin_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $contact = new Contact();
        $form = $this->createForm(Contact1Type::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($contact);
            $entityManager->flush();

            return $this->redirectToRoute('app_contact_admin_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('admin/contact/new.html.twig', [
            'contact' => $contact,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_contact_admin_show', methods: ['GET'])]
    public function show(Contact $contact): Response
    {
        return $this->render('admin/contact/show.html.twig', [
            'contact' => $contact,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_contact_admin_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Contact $contact, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(Contact1Type::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_contact_admin_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('admin/contact/edit.html.twig', [
            'contact' => $contact,
            'form' => $form,
        ]);
    }

    #[Route('/contact/admin/{id}', name: 'app_contact_admin_delete', methods: ['GET', 'POST'])]
    public function delete(Request $request, Contact $contact, EntityManagerInterface $em): Response
    {
        $em->remove($contact);
        $em->flush();

        return $this->redirectToRoute('app_contact_admin_index');
    }

    #[Route('/contact/admin/bulk-delete', name: 'app_contact_admin_bulk_delete', methods: ['POST'])]
    public function bulkDelete(Request $request, EntityManagerInterface $em, ContactRepository $contactRepository): Response
    {
    $ids = $request->request->all('ids');

    if (!empty($ids)) {
        foreach ($ids as $id) {
            $contact = $contactRepository->find($id);
            if ($contact) {
                $em->remove($contact);
            }
        }
        $em->flush();
        $this->addFlash('success', 'Messages supprimés avec succès.');
    }

    return $this->redirectToRoute('app_contact_admin_index');
}
}
