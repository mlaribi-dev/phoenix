<?php

namespace App\DataFixtures;

use App\Entity\Project;
use App\DataFixtures\StatusFixtures;
use App\Entity\Status;
use App\Entity\Team;
use App\Entity\Wallet;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;


class ProjectFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager): void
    {
      
        for($i = 0; $i < 10; $i++)
        {
            /** @var Budget $status */
            $budget = $this->getReference('budget_'.random_int(0,2));

            /** @var Team $teamClient */
            $teamProd = $this->getReference('team_'.random_int(1,2));

            /** @var Team $teamClient */
            $teamClient = $this->getReference('team_'.random_int(1,2));
           

            $nb = random_int(0,2);
            /** @var Status $status */
            $status = $this->getReference('status_'.$nb);

            $project = new Project();
            $project->setName('test'.$i);
            $project->setDescription('Premier test'.$i);
            $project->setStartedAt(new \DateTime());
            $project->setEndedAt(new \DateTime());
            $project->setBudget($budget);
            $project->setClientTeam($teamClient);
            $project->setProductionTeam($teamProd);
            $project->setStatus($status);
            $project->setCode(1);
            $project->setArchive(false);
            $manager->persist($project);
            $this->addReference('project_'.$i,$project);
            
        }

        $manager->flush();
    }

    public function getDependencies():array
    {
        return [
            StatusFixtures::class,
            BudgetFixtures::class,
            TeamFixtures::class,
            
        
        ];
    }
}
