<?php

namespace App\Controller;

use App\Repository\SkillRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class SkillsController extends AbstractController
{
    #[Route('/competences', name: 'app_skills')]
    public function index(SkillRepository $skillRepository): Response
    {
        $skills = $skillRepository->findAll();

        $skillsByCategory = [];
        foreach ($skills as $skill) {
            $skillsByCategory[$skill->getCategory()][] = $skill;
        }

        return $this->render('public/skills/index.html.twig', [
            'skillsByCategory' => $skillsByCategory,
        ]);
    }
}