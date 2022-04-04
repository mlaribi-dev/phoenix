<?php

namespace App\Controller;

use App\Entity\User;
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
        $projectTeam = [];

        $user =$this->getUser();

        if(!is_null($user))
        {
            $userTeam = $user->getTeam();

            if(!is_null($userTeam)){
                $projectTeam  = $projectRepository->findbyTeam($userTeam->getId());
            }
        }



        return $this->render('dashboard/index.html.twig', [
            'projects' => $projectRepository->findLatest(),
            'projectTeam' => $projectTeam,
            'projectRisk' => $projectRepository->findProjectWithRisk(),
            'statuses' => $statusRepository->findAll(),
            'facts'=>$factRepository->findFactsToConfirm()
        ]);
    }
}
