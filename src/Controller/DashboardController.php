<?php

namespace App\Controller;
use App\Repository\FactRepository;
use App\Repository\ProjectRepository;
use App\Repository\StatusRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractController
{
    #[Route('/dashboard', name: 'app_dashboard')]
    public function index(ProjectRepository $projectRepository, StatusRepository $statusRepository, FactRepository $factRepository): Response
    {
        return $this->render('dashboard/index.html.twig', [
            'projects' => $projectRepository->findLatest(),
            'projectTeam' => $projectRepository->findbyTeam($this->getUser()->getTeam()->getId()),
            'projectRisk' => $projectRepository->findProjectWithRisk(),
            'statuses' => $statusRepository->findAll(),
            'facts'=>$factRepository->findFactsToConfirm()
        ]);
    }
}
