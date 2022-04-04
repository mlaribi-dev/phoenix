<?php

namespace App\Entity;

use App\Repository\TeamRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\Types\Nullable;
use Symfony\Component\Validator\Constraints\NotNull;

#[ORM\Entity(repositoryClass: TeamRepository::class)]
class Team
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $name;

    #[ORM\OneToMany(mappedBy: 'team', targetEntity: User::class)]
    private $members;

    #[ORM\ManyToOne(targetEntity: User::class, inversedBy: 'teams')]
    private $manager;

    #[ORM\OneToMany(mappedBy: 'clientTeam', targetEntity: Project::class)]
    private $projects;

    #[ORM\OneToMany(mappedBy: 'productionTeam', targetEntity: Project::class)]
    private $productionProjects;


    public function __construct()
    {
        $this->projects = new ArrayCollection();
        $this->members = new ArrayCollection();
        $this->productionProjects = new ArrayCollection();
    }

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

    /**
     * @return Collection<int, User>
     */
    public function getMembers(): Collection
    {
        return $this->members;
    }

    public function addMember(User $member): self
    {
        if (!$this->members->contains($member)) {
            $this->members[] = $member;
            $member->setTeam($this);
        }

        return $this;
    }



    public function removeMember(User $member): self
    {
        if ($this->members->removeElement($member)) {
            // set the owning side to null (unless already changed)
            if ($member->getTeam() === $this) {
                $member->setTeam(null);
            }
        }

        return $this;
    }

    public function getManager(): ?User
    {
        return $this->manager;
    }

    public function setManager(?User $manager): self
    {
        $this->manager = $manager;

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
            $project->setClientTeam($this);
        }

        return $this;
    }

    public function removeProject(Project $project): self
    {
        if ($this->projects->removeElement($project)) {
            // set the owning side to null (unless already changed)
            if ($project->getClientTeam() === $this) {
                $project->setClientTeam(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Project>
     */
    public function getProductionProjects(): Collection
    {
        return $this->productionProjects;
    }

    public function addProductionProject(Project $productionProject): self
    {
        if (!$this->productionProjects->contains($productionProject)) {
            $this->productionProjects[] = $productionProject;
            $productionProject->setProductionTeam($this);
        }

        return $this;
    }

    public function removeProductionProject(Project $productionProject): self
    {
        if ($this->productionProjects->removeElement($productionProject)) {
            // set the owning side to null (unless already changed)
            if ($productionProject->getProductionTeam() === $this) {
                $productionProject->setProductionTeam(null);
            }
        }

        return $this;
    }

    public function __toString()
    {
        return $this->name;
       
    }


}
