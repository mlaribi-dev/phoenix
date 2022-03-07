<?php

namespace App\DataFixtures;

use App\Entity\Milestone;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class MilestoneFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
  
            $milestone1 = new Milestone();
            $milestone1->setName('Début de conception');
            $milestone1->setValue(1);
            $milestone1->setState(1);
            $this->addReference('milestone_0',$milestone1);
            $manager->persist($milestone1);

            $milestone2 = new Milestone();
            $milestone2->setName('Fin de la conception');
            $milestone2->setValue(2);
            $milestone2->setState(1);
            $this->addReference('milestone_1',$milestone2);
            $manager->persist($milestone2);

            $milestone3 = new Milestone();
            $milestone3->setName('Livraison en préproduction');
            $milestone3->setValue(3);
            $milestone3->setState(1);
            $this->addReference('milestone_2',$milestone3);
            $manager->persist($milestone3);
            
       
        $manager->flush();

        
    }
}
