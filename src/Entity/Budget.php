<?php

namespace App\Entity;

use App\Repository\BudgetRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BudgetRepository::class)]
class Budget
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'integer')]
    private $initialValue;

    #[ORM\Column(type: 'integer')]
    private $consumedValue;

    #[ORM\Column(type: 'integer')]
    private $toDo;

    #[ORM\Column(type: 'integer')]
    private $landingBudget;

    #[ORM\OneToMany(mappedBy: 'budget', targetEntity: Project::class)]
    private $projects;

    public function __construct()
    {
        $this->projects = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getInitialValue(): ?int
    {
        return $this->initialValue;
    }

    public function setInitialValue(int $initialValue): self
    {
        $this->initialValue = $initialValue;

        return $this;
    }

    public function getConsumedValue(): ?int
    {
        return $this->consumedValue;
    }

    public function setConsumedValue(int $consumedValue): self
    {
        $this->consumedValue = $consumedValue;

        return $this;
    }

    public function getToDo(): ?int
    {
        return $this->toDo;
    }

    public function setToDo(int $toDo): self
    {
        $this->toDo = $toDo;

        return $this;
    }

    public function getLandingBudget(): ?int
    {
        return $this->landingBudget;
    }

    public function setLandingBudget(int $landingBudget): self
    {
        $this->landingBudget = $landingBudget;

        return $this;
    }

    /**
     * @return Collection<int, Project>
     */
    public function getProjects(): Collection
    {
        return $this->projects;
    }

    public function addProject(Project $project): self
    {
        if (!$this->projects->contains($project)) {
            $this->projects[] = $project;
            $project->setBudget($this);
        }

        return $this;
    }

    public function removeProject(Project $project): self
    {
        if ($this->projects->removeElement($project)) {
            // set the owning side to null (unless already changed)
            if ($project->getBudget() === $this) {
                $project->setBudget(null);
            }
        }

        return $this;
    }
}
