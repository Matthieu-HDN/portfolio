<?php

namespace App\Controller;

use App\Repository\ContactRepository;
use App\Repository\ProjectRepository;
use App\Repository\SkillRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class DashboardController extends AbstractController
{
    #[Route('/admin', name: 'app_dashboard')]
    public function index(
        ProjectRepository $projectRepository,
        SkillRepository $skillRepository,
        ContactRepository $contactRepository
    ): Response
    {
        return $this->render('admin/dashboard/index.html.twig', [
            'projectCount' => count($projectRepository->findAll()),
            'skillCount' => count($skillRepository->findAll()),
            'messageCount' => count($contactRepository->findAll()),
        ]);
    }
}