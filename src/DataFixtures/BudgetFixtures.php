<?php

namespace App\DataFixtures;

use App\Entity\Budget;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class BudgetFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        for ($i = 0; $i < 3; $i++) {
            $budget = new Budget();
            $budget->setInitialValue(50000);
            $budget->setConsumedValue(35000);
            $budget->setToDo(15000);
            $budget->setLandingBudget(50000);
            $manager->persist($budget);
            
            $this->addReference('budget_'.$i,$budget);
        }
        $manager->flush();

    }
    
}
