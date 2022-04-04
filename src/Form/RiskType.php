<?php

namespace App\Form;

use App\Entity\Probability;
use App\Entity\Risk;
use App\Entity\Severity;
use App\Repository\ProbabilityRepository;
use App\Repository\SeverityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RiskType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('identification_date')
            ->add('resolved_date')
            ->add('severity',EntityType::class,[
                'label' => 'Severity',
                'choice_label'=>'name',
                'class'=> Severity::class,
                'query_builder' => function(SeverityRepository $er){
                    return $er->createQueryBuilder('sv')
                    ->orderBy('sv.id');
                },
            ])
            ->add('probability', EntityType::class,[
                'label'=> 'Probability',
                'class'=> Probability::class,
                'choice_label'=>'name',
                'query_builder' => function(ProbabilityRepository $er){
                    return $er->createQueryBuilder('po')
                    ->orderBy('po.id');
                },
            ])
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Risk::class,
        ]);
    }
}
