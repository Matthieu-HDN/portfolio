<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class LegalController extends AbstractController
{
    #[Route('/mentions-legales', name: 'app_mentions')]
    public function mentions(): Response
    {
        return $this->render('public/legal/mentions.html.twig');
    }

    #[Route('/conditions-generales', name: 'app_cgv')]
    public function cgv(): Response
    {
        return $this->render('public/legal/cgv.html.twig');
    }

    #[Route('/rgpd', name: 'app_rgpd')]
    public function rgpd(): Response
    {
        return $this->render('public/legal/rgpd.html.twig');
    }
}