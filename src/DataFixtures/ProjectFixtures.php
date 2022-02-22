<?php

namespace App\DataFixtures;

use App\Entity\Project;
use App\DataFixtures\StatusFixtures;
use App\Entity\Status;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;


class ProjectFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager): void
    {
      
        for($i = 0; $i < 10; $i++)
        {
            $nb = random_int(0,2);
            /** @var Status $status */
            $status = $this->getReference('status_'.$nb);
            $project = new Project();
            $project->setName('test'.$i);
            $project->setDescription('Premier test'.$i);
            $project->setStartedAt(new \DateTime());
            $project->setEndedAt(new \DateTime());
            $project->setEndedAt(new \DateTime());
            $project->setStatus($status);

            $manager->persist($project);
        }

        $manager->flush();
    }

    public function getDependencies()
    {
        return [
            StatusFixtures::class,
        ];
    }
}
