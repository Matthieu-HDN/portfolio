<?php

namespace App\Controller;

use App\Repository\SkillRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Contracts\Cache\CacheInterface;
use Symfony\Contracts\Cache\ItemInterface;

class SkillsController extends AbstractController
{
    #[Route('/competences', name: 'app_skills')]
    public function index(SkillRepository $skillRepository, CacheInterface $cache): Response
    {
        $skillsByCategory = $cache->get('skills_by_category', function (ItemInterface $item) use ($skillRepository) {
            $item->expiresAfter(86400); // 24h en secondes

            $skills = $skillRepository->findAll();
            $skillsByCategory = [];
            foreach ($skills as $skill) {
                $skillsByCategory[$skill->getCategory()][] = $skill;
            }

            return $skillsByCategory;
        });

        return $this->render('public/skills/index.html.twig', [
            'skillsByCategory' => $skillsByCategory,
        ]);
    }
}