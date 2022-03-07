<?php

namespace App\Entity;

use App\Repository\RiskRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RiskRepository::class)]
class Risk
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $name;

    #[ORM\Column(type: 'datetime')]
    private $identification_date;

    #[ORM\Column(type: 'datetime')]
    private $resolved_date;

    #[ORM\Column(type: 'string', length: 255)]
    private $severity;

    #[ORM\Column(type: 'string', length: 255)]
    private $propability;

    #[ORM\ManyToOne(targetEntity: Project::class, inversedBy: 'risks')]
    private $project;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getIdentificationDate(): ?\DateTimeInterface
    {
        return $this->identification_date;
    }

    public function setIdentificationDate(\DateTimeInterface $identification_date): self
    {
        $this->identification_date = $identification_date;

        return $this;
    }

    public function getResolvedDate(): ?\DateTimeInterface
    {
        return $this->resolved_date;
    }

    public function setResolvedDate(\DateTimeInterface $resolved_date): self
    {
        $this->resolved_date = $resolved_date;

        return $this;
    }

    public function getSeverity(): ?string
    {
        return $this->severity;
    }

    public function setSeverity(string $severity): self
    {
        $this->severity = $severity;

        return $this;
    }

    public function getPropability(): ?string
    {
        return $this->propability;
    }

    public function setPropability(string $propability): self
    {
        $this->propability = $propability;

        return $this;
    }

    public function getProject(): ?Project
    {
        return $this->project;
    }

    public function setProject(?Project $project): self
    {
        $this->project = $project;

        return $this;
    }



}
