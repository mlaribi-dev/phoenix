<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;



class UserFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;
    
    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }
    
    public function load(ObjectManager $manager): void
    {
        for($i = 0; $i < 10; $i++)
        {
            $user = new User();
            $user->setEmail(sprintf('user%d@gmail.com',$i));
            $user->setPassword($this->hasher->hashPassword($user,'test'));
            $user->setFirstName('firstname'.$i);
            $user->setLastName('lastname',$i);
            $this->addReference('user_'.$i,$user);
            $manager->persist($user);
        }

        $manager->flush();
    }
}
