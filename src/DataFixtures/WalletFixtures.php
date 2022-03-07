<?php

namespace App\DataFixtures;

use App\Entity\Project;
use App\Entity\User;
use App\Entity\Wallet;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;

class WalletFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager): void
    {
         /** @var User $teamLeader */
        $teamLeader = $this->getReference('user_1');

        /** @var Project $projet1 */
        $projet1 = $this->getReference('project_4');

        /** @var Project $projet2 */
        $projet2 = $this->getReference('project_2');

        /** @var Project $projet3 */
        $projet3 = $this->getReference('project_6');

        $wallet = new Wallet();
        $wallet
            ->setName('Premier projet')
            ->setManager($teamLeader)
            ->addProject($projet1)
            ->addProject($projet2)
            ->addProject($projet3)
        ;
        $manager->persist($wallet);

        /** @var User $teamLeader */
        $teamLeader = $this->getReference('user_6');

        /** @var Project $projet1 */
        $projet1 = $this->getReference('project_1');

        /** @var Project $projet2 */
        $projet2 = $this->getReference('project_3');

        /** @var Project $projet3 */
        $projet3 = $this->getReference('project_9');

        $wallet2 = new Wallet();
        $wallet2
            ->setName('Deuxième projet')
            ->setManager($teamLeader)
            ->addProject($projet1)
            ->addProject($projet2)
            ->addProject($projet3)
        ;
        $manager->persist($wallet2);

        $manager->flush();

    }

    public function getDependencies(): array
    {
        return [
            UserFixtures::class,
            ProjectFixtures::class,
        ];
    }
}
