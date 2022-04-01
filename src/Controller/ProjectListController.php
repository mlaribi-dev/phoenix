<?php

namespace App\Controller;

use App\Repository\ProjectRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProjectListController extends AbstractController
{
    #[Route('/project/list', name: 'app_project_list')]
    public function index(ProjectRepository $projects): Response
    {
        return $this->render('project_list/index.html.twig', [
            'projects' => $projects->getAll(),
        ]);
    }
}
