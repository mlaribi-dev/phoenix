<?php

namespace App\Form;

use App\Entity\Budget;
use App\Entity\Project;
use App\Entity\Status;
use App\Entity\Team;
use App\Entity\User;
use App\Entity\Wallet;
use App\Repository\BudgetRepository;
use App\Repository\StatusRepository;
use App\Repository\TeamRepository;
use App\Repository\UserRepository;
use App\Repository\WalletRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;



class ProjectType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('description')
            ->add('wallet',EntityType::class,[
                'label' => 'Portefeuille',
                'class' => Wallet::class,
                'query_builder' => function(WalletRepository $er){
                    return $er->createQueryBuilder('po')
                    ->orderBy('po.id');
                }
            ])
            ->add('productionTeam',EntityType::class,[
                'label' => 'Equipe de production',
                'class' => Team::class,
                'query_builder' => function(TeamRepository $er){
                    return $er->createQueryBuilder('te')
                    ->orderBy('te.id');
                }
            ])

            ->add('clientTeam',EntityType::class,[
                'label' => 'Equipe client',
                'class' => Team::class,
                'query_builder' => function(TeamRepository $er){
                    return $er->createQueryBuilder('te')
                    ->orderBy('te.id');
                }
            ])
            ->add('startedAt')
            ->add('endedAt')
            ->add('budget',EntityType::class,[
                'label' => 'Budget',
                'class'=> Budget::class,
                'query_builder' => function(BudgetRepository $er){
                    return $er->createQueryBuilder('bu')
                    ->orderBy('bu.id');
                },
                'choice_label'=>'initialValue'
            ])  
            ->add('code')
            ->add('state')
            ->add('archive')
            ->add('submit',SubmitType::class)
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Project::class,
        ]);
    }
}
