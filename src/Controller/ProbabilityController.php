<?php

namespace App\Controller;

use App\Entity\Probability;
use App\Form\ProbabilityType;
use App\Repository\ProbabilityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/probability')]
class ProbabilityController extends AbstractController
{
    #[Route('/', name: 'probability_index', methods: ['GET'])]
    public function index(ProbabilityRepository $probabilityRepository): Response
    {
        return $this->render('probability/index.html.twig', [
            'probabilities' => $probabilityRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'probability_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $probability = new Probability();
        $form = $this->createForm(ProbabilityType::class, $probability);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($probability);
            $entityManager->flush();

            return $this->redirectToRoute('probability_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('probability/new.html.twig', [
            'probability' => $probability,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'probability_show', methods: ['GET'])]
    public function show(Probability $probability): Response
    {
        return $this->render('probability/show.html.twig', [
            'probability' => $probability,
        ]);
    }

    #[Route('/{id}/edit', name: 'probability_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Probability $probability, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ProbabilityType::class, $probability);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('probability_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('probability/edit.html.twig', [
            'probability' => $probability,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'probability_delete', methods: ['POST'])]
    public function delete(Request $request, Probability $probability, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$probability->getId(), $request->request->get('_token'))) {
            $entityManager->remove($probability);
            $entityManager->flush();
        }

        return $this->redirectToRoute('probability_index', [], Response::HTTP_SEE_OTHER);
    }
}
