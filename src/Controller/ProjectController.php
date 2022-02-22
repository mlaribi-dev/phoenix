<?php

namespace App\Controller;

use App\Repository\ProjectRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Project;
use App\Form\ProjectType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;



class ProjectController extends AbstractController
{
    #[Route('/', name: 'app_homepage')]
    public function index(ProjectRepository $projectRepository): Response
    {
        
        return $this->render('project/index.html.twig', [
            'projects' => $projectRepository->findAll(),
        ]);
    }

    #[Route('/new', name:'app_new_project')]
    public function new(Request $request,EntityManagerInterface $entityManager): Response
    {
        $project = new Project();
        $form = $this->createForm(ProjectType::class, $project)->handleRequest($request);

        if($form->isSubmitted())
        {
            if($form->isValid())
            {
                $entityManager->persist($project);
                $entityManager->flush();

                return $this->redirectToRoute('app_homepage');
            }
            
        }
        
        return $this->render('project/new.html.twig',[
            'project_form' => $form->createView(),
        ]);
    }

    #[Route('/show/{id}', name:'app_show_project')]

    public function show(Project $project) : Response
    {
        return $this->render('project/show.html.twig',[
            'project' => $project,
        ]);
    }
}
