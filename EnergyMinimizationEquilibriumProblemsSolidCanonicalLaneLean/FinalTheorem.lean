import canonicalLaneMathlib.AdmissibleClass
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.BridgeLemmas
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

def ConstrainedEnergyMinimizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ gateClosed A

theorem constrained_energy_minimization_endgame (A : AdmissibleClass) :
    ConstrainedEnergyMinimizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse