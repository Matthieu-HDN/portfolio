<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Attribute\Route;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'app_contact')]
    public function index(Request $request, EntityManagerInterface $em, MailerInterface $mailer): Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $contact->setSentAt(new \DateTime());
            $em->persist($contact);
            $em->flush();

            $email = (new Email())
                ->from('contact@studio-mh.fr')
                ->to('contact@studio-mh.fr')
                ->subject('Nouveau message de ' . $contact->getName())
                ->html('
                    <h2>Nouveau message reçu</h2>
                    <p><strong>Nom :</strong> ' . $contact->getName() . '</p>
                    <p><strong>Email :</strong> ' . $contact->getEmail() . '</p>
                    <p><strong>Message :</strong><br>' . nl2br($contact->getMessage()) . '</p>
                ');

            $mailer->send($email);
            
            $this->addFlash('success', 'Votre message a bien été envoyé !');

            return $this->redirectToRoute('app_contact');
        }

        return $this->render('public/contact/index.html.twig', [
            'form' => $form,
        ]);
    }
}