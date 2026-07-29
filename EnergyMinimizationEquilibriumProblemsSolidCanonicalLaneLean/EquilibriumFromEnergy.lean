import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.SolidEnergyFunctional

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumEquations (E : SolidEnergyFunctional) where
  eulerLagrangeEquation : Prop
  naturalBoundaryConditions : Prop
  stationarityCondition : Prop
  equivalenceToMinimizer : Prop
  eulerLagrangeEquationTerm : eulerLagrangeEquation
  naturalBoundaryConditionsTerm : naturalBoundaryConditions
  stationarityConditionTerm : stationarityCondition
  equivalenceToMinimizerTerm : equivalenceToMinimizer

structure EquilibriumEvidence (E : SolidEnergyFunctional) (Eq : EquilibriumEquations E) where
  eulerLagrangeEquationClosed : Eq.eulerLagrangeEquation
  naturalBoundaryConditionsClosed : Eq.naturalBoundaryConditions
  stationarityConditionClosed : Eq.stationarityCondition
  equivalenceToMinimizerClosed : Eq.equivalenceToMinimizer

def EquilibriumClosed (E : SolidEnergyFunctional) (Eq : EquilibriumEquations E) : Prop :=
  Eq.eulerLagrangeEquation ∧ Eq.naturalBoundaryConditions ∧ Eq.stationarityCondition ∧ Eq.equivalenceToMinimizer

theorem equilibrium_closed_from_evidence
    (E : SolidEnergyFunctional) (Eq : EquilibriumEquations E)
    (Ev : EquilibriumEvidence E Eq) : EquilibriumClosed E Eq := by
  exact And.intro Ev.eulerLagrangeEquationClosed
    (And.intro Ev.naturalBoundaryConditionsClosed
      (And.intro Ev.stationarityConditionClosed Ev.equivalenceToMinimizerClosed))

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse