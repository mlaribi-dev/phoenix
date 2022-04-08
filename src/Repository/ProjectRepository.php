<?php

namespace App\Repository;

use App\Entity\Project;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query\Expr\Func;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Project|null find($id, $lockMode = null, $lockVersion = null)
 * @method Project|null findOneBy(array $criteria, array $orderBy = null)
 * @method Project[]    findAll()
 * @method Project[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProjectRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Project::class);
    }

    /**
     * @return Project[]
     */
    

    public function findLatest():array
    {
        return $this->createQueryBuilder('p')
           ->setMaxResults(4)
           ->orderBy('p.id','DESC')
           ->getQuery()
           ->getResult();
        ;
    }

    public function findbyTeam($teamId)
    {
        return $this->createQueryBuilder('project')
        ->leftJoin('project.productionTeam' ,'productionteam')
        ->andWhere('productionteam.id = :teamId')
        ->setParameter('teamId',$teamId)
        ->orderBy('project.id','ASC')
        ->getQuery()
        ->getResult();
            
    }

   
    public function findProjectWithRisk()
    {
        $qb = $this->createQueryBuilder('project');
        $qb->join('project.risks','risks');

        return $qb->getQuery()->getResult();
    }

    public function findArchivedProject(): array
    {
        return $this->createQueryBuilder('a')
        ->andWhere('a.archive = :archive')
        ->setParameter('archive',1)
        ->getQuery()
        ->getResult();
    }

    public function findProjectNotArchived(): array
    {
        return $this->createQueryBuilder('a')
        ->andWhere('a.archive = :archive')
        ->setParameter('archive',0)
        ->getQuery()
        ->getResult();
    }


    

    


    public function getAll()
    {
        $qb = $this->createQueryBuilder('project');
        $qb 
            ->leftJoin('project.clientTeam', 'clientTeam')
            ->addSelect('clientTeam')
            ->leftJoin('project.productionTeam', 'projectTeam')
            ->addSelect('projectTeam')
            ->leftJoin('project.status', 'status')
            ->addSelect('status')
            
        ;
        return $qb->getQuery()->getResult();
    }


    
 

}
