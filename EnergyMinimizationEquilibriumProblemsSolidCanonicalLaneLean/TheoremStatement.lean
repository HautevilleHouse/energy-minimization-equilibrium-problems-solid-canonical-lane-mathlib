import EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

structure ClassicalSourceBoundaryCarried : Prop where
  theoremBoundaryOpen : Prop
  sourceConjectureClosureClaimed : Prop
  boundaryCarried : theoremBoundaryOpen ∧ ¬ sourceConjectureClosureClaimed

structure ManifoldConstrainedTheoremClosed : Prop where
  certificateLane : String
  allPass : Bool
  outsideDependencyZero : Bool
  constraintsMet : certificateLane = "manifold_constrained" ∧ allPass ∧ outsideDependencyZero

end EnergyMinimizationEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
