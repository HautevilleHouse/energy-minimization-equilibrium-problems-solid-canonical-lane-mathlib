import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure SolidEnergyFunctional where
  domain : Type u
  topology : TopologicalSpace domain
  energyFunctional : domain → ℝ
  weakLowerSemicontinuous : Prop
  coercivity : Prop
  proper : Prop
  weakLowerSemicontinuousTerm : weakLowerSemicontinuous
  coercivityTerm : coercivity
  properTerm : proper

structure SolidEnergyFunctionalEvidence (E : SolidEnergyFunctional) where
  weakLowerSemicontinuousClosed : E.weakLowerSemicontinuous
  coercivityClosed : E.coercivity
  properClosed : E.proper

def SolidEnergyFunctionalClosed (E : SolidEnergyFunctional) : Prop :=
  E.weakLowerSemicontinuous ∧ E.coercivity ∧ E.proper

theorem solid_energy_functional_closed_from_evidence
    (E : SolidEnergyFunctional) (Ev : SolidEnergyFunctionalEvidence E) :
    SolidEnergyFunctionalClosed E := by
  exact And.intro Ev.weakLowerSemicontinuousClosed (And.intro Ev.coercivityClosed Ev.properClosed)

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse