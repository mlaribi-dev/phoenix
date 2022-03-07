<?php

namespace App\Form;

use App\Entity\Budget;
use App\Entity\Project;
use App\Entity\User;
use App\Repository\BudgetRepository;
use App\Repository\UserRepository;
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
            ->add('startedAt')
            ->add('endedAt')
            ->add('submit',SubmitType::class)
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
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Project::class,
        ]);
    }
}
