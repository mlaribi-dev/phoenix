<?php

namespace App\DataFixtures;

use App\Entity\Probability;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class ProbabilityFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);

      
        
            $probability1 = new Probability();
            $probability1->setName('Prevu');
            $probability1->setLevel(1);
            $manager->persist($probability1);
            $this->addReference('probability_0',$probability1);

            $probability2 = new Probability();
            $probability2->setName('En cours');
            $probability2->setLevel(2);
            $manager->persist($probability1);
            $this->addReference('probability_1',$probability2);

            $probability3 = new Probability();
            $probability3->setName('Terminé');
            $probability3->setLevel(3);
            $manager->persist($probability3);
            $this->addReference('probability_2',$probability3);
        

        $manager->flush();
    }
}
