import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumEnergy where
  energyFunctional : Type u
  stateSpace : Type v
  minimizer : stateSpace
  energyValue : ℝ
  convexity : Prop
  existence : Prop
  uniqueness : Prop

structure EquilibriumEnergyEvidence (E : EquilibriumEnergy) where
  convexityClosed : E.convexity
  existenceClosed : E.existence
  uniquenessClosed : E.uniqueness

def EquilibriumEnergyClosed (E : EquilibriumEnergy) : Prop :=
  E.convexity ∧ E.existence ∧ E.uniqueness

theorem equilibrium_energy_closed_from_evidence (E : EquilibriumEnergy) (Ev : EquilibriumEnergyEvidence E) :
    EquilibriumEnergyClosed E := by
  exact And.intro Ev.convexityClosed (And.intro Ev.existenceClosed Ev.uniquenessClosed)

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse