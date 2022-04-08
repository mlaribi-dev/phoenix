<?php

namespace App\Controller;

use App\Repository\ProjectRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class ProjectArchivedController extends AbstractController
{
    #[Route('/project/archived', name: 'project_archived')]
    public function index(ProjectRepository $projects): Response
    {
        return $this->render('project_archived/index.html.twig', [
            'projects' => $projects->findArchivedProject(),
        ]);
    }
}
