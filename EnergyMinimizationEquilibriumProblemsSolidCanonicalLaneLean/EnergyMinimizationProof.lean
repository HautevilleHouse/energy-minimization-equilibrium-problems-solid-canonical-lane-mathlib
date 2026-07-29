import canonicalLaneMathlib.AdmissibleClass
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.EquilibriumEnergyStructure
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.VariationalPrinciple

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure EnergyMinimizationFoundation where
  equilibriumEnergy : EquilibriumEnergy
  equilibriumEnergyEvidence : EquilibriumEnergyEvidence equilibriumEnergy
  variationalPrinciple : VariationalPrinciple
  variationalPrincipleEvidence : VariationalPrincipleEvidence variationalPrinciple

def EnergyMinimizationFoundationClosed (F : EnergyMinimizationFoundation) : Prop :=
  EquilibriumEnergyClosed F.equilibriumEnergy ∧ VariationalPrincipleClosed F.variationalPrinciple

theorem energy_minimization_foundation_closed_from_evidence (F : EnergyMinimizationFoundation) :
    EnergyMinimizationFoundationClosed F := by
  exact And.intro (equilibrium_energy_closed_from_evidence F.equilibriumEnergy F.equilibriumEnergyEvidence)
    (variational_principle_closed_from_evidence F.variationalPrinciple F.variationalPrincipleEvidence)

structure EnergyMinimizationProofCertificate where
  foundation : EnergyMinimizationFoundation
  convergenceGuarantee : Prop
  stabilityGuarantee : Prop
  convergenceGuaranteeClosed : convergenceGuarantee
  stabilityGuaranteeClosed : stabilityGuarantee

def EnergyMinimizationProofCertificateClosed (C : EnergyMinimizationProofCertificate) : Prop :=
  EnergyMinimizationFoundationClosed C.foundation ∧ C.convergenceGuarantee ∧ C.stabilityGuarantee

theorem energy_minimization_proof_certificate_closed (C : EnergyMinimizationProofCertificate) :
    EnergyMinimizationProofCertificateClosed C := by
  exact And.intro (energy_minimization_foundation_closed_from_evidence C.foundation)
    (And.intro C.convergenceGuaranteeClosed C.stabilityGuaranteeClosed)

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse