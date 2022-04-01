<?php

namespace App\Controller;

use App\Entity\Severity;
use App\Form\SeverityType;
use App\Repository\SeverityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/severity')]
class SeverityController extends AbstractController
{
    #[Route('/', name: 'severity_index', methods: ['GET'])]
    public function index(SeverityRepository $severityRepository): Response
    {
        return $this->render('severity/index.html.twig', [
            'severities' => $severityRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'severity_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $severity = new Severity();
        $form = $this->createForm(SeverityType::class, $severity);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($severity);
            $entityManager->flush();

            return $this->redirectToRoute('severity_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('severity/new.html.twig', [
            'severity' => $severity,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'severity_show', methods: ['GET'])]
    public function show(Severity $severity): Response
    {
        return $this->render('severity/show.html.twig', [
            'severity' => $severity,
        ]);
    }

    #[Route('/{id}/edit', name: 'severity_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Severity $severity, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SeverityType::class, $severity);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('severity_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('severity/edit.html.twig', [
            'severity' => $severity,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'severity_delete', methods: ['POST'])]
    public function delete(Request $request, Severity $severity, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$severity->getId(), $request->request->get('_token'))) {
            $entityManager->remove($severity);
            $entityManager->flush();
        }

        return $this->redirectToRoute('severity_index', [], Response::HTTP_SEE_OTHER);
    }
}
