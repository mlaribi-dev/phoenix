<?php

namespace App\DataFixtures;

use App\Entity\Probability;
use App\Entity\Risk;
use App\Entity\Severity;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;


class RiskFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager): void {

        for ($i = 0; $i < 3; $i++) {
        $risk = new Risk();
        $risk->setName('élevé'.$i);
        $risk->setIdentificationDate(new \DateTime());
        $risk->setResolvedDate(new \DateTime());
        $risk->setProject($this->getReference('project_'.$i));
        $manager->persist($risk);
        
    }

    $manager->flush();

    }

    public function getDependencies():array
    {
        return [
            ProjectFixtures::class,
        ];
    }
}
