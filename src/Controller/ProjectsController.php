<?php

namespace App\Controller;

use App\Repository\ProjectRepository;
use App\Entity\Project;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ProjectsController extends AbstractController
{
    #[Route('/projets', name: 'app_projects')]
    public function index(ProjectRepository $projectRepository): Response
    {
        $projects = $projectRepository->findAll();

        return $this->render('public/projects/index.html.twig', [
            'projects' => $projects,
        ]);
    }

    #[Route('/projets/{id}', name: 'app_project_show')]
    public function show(Project $project): Response
    {
        return $this->render('public/projects/show.html.twig', [
            'project' => $project,
        ]);
    }

}