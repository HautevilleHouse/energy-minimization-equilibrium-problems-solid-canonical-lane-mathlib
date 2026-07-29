import canonicalLaneMathlib.AdmissibleClass
import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse