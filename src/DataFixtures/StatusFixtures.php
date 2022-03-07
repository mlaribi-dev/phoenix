<?php

namespace App\DataFixtures;

use App\Entity\Status;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class StatusFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);

      
        
            $status1 = new Status();
            $status1->setName('Prevu');
            $status1->setSlug('UPCOMING');
            $status1->setValue(0);
            $status1->setColor('#F63C14');
            $manager->persist($status1);
            $this->addReference('status_0',$status1);

            $status2 = new Status();
            $status2->setName('En cours');
            $status2->setSlug('IN PROGRESS');
            $status2->setValue(1);
            $status2->setColor('#E5F614');
            $manager->persist($status2);
            $this->addReference('status_1',$status2);

            $status3 = new Status();
            $status3->setName('Terminé');
            $status3->setSlug('FINISHED');
            $status3->setValue(3);
            $status3->setColor('#12E327');
            $manager->persist($status3);
            $this->addReference('status_2',$status3);
        

        $manager->flush();
    }
}
