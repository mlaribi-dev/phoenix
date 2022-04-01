<?php

namespace App\Controller;

use App\Entity\Fact;
use App\Form\FactType;
use App\Repository\FactRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/fact')]
class FactController extends AbstractController
{
    #[Route('/', name: 'fact_index', methods: ['GET'])]
    public function index(FactRepository $factRepository): Response
    {
        return $this->render('fact/index.html.twig', [
            'facts' => $factRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'fact_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $fact = new Fact();
        $form = $this->createForm(FactType::class, $fact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($fact);
            $entityManager->flush();

            return $this->redirectToRoute('fact_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('fact/new.html.twig', [
            'fact' => $fact,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'fact_show', methods: ['GET'])]
    public function show(Fact $fact): Response
    {
        return $this->render('fact/show.html.twig', [
            'fact' => $fact,
        ]);
    }

    #[Route('/{id}/edit', name: 'fact_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Fact $fact, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(FactType::class, $fact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('fact_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('fact/edit.html.twig', [
            'fact' => $fact,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'fact_delete', methods: ['POST'])]
    public function delete(Request $request, Fact $fact, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$fact->getId(), $request->request->get('_token'))) {
            $entityManager->remove($fact);
            $entityManager->flush();
        }

        return $this->redirectToRoute('fact_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/confirmation/{id}', name: 'fact_confirmation')]
    public function confirmation(FactRepository $factRepository,  EntityManagerInterface $entityManager,int $id) : Response
    {
        $facts = $entityManager->getRepository(Fact::class)->find($id);

        if(!$facts){
            throw $this->createNotFoundException('Fait non trouvé' .$id);
        }

        $facts->setIsConfirmed(1);
        $entityManager->flush();

        return $this->redirectToRoute('fact_index');
    }
    
}
