<?php

namespace App\DataFixtures;

use App\Entity\Severity;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class SeverityFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);

      
        
            $severity1 = new Severity();
            $severity1->setName('Mineur');
            $severity1->setLevel(1);
            $manager->persist($severity1);
            $this->addReference('severity_0',$severity1);

            $severity2 = new Severity();
            $severity2->setName('Modéré');
            $severity2->setLevel(2);
            $manager->persist($severity2);
            $this->addReference('severity_1',$severity2);


            $severity3 = new Severity();
            $severity3->setName('Majeur');
            $severity3->setLevel(3);
            $manager->persist($severity3);
            $this->addReference('severity_2',$severity3);

        

        $manager->flush();
    }
}
