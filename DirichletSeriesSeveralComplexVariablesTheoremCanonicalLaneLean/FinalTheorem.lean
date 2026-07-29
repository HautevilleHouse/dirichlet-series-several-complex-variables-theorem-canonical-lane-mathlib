import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.DirichletMultivariableBridge
import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.DirichletConvergenceLayer
import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.DirichletFunctionalEquationLayer

/-!
# Final theorem — Dirichlet Series Several Complex Variables Theorem closure
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DirichletBridgeClosed primitiveDirichletBridgeCertificate

def gateClosed (A : AdmissibleClass) : Prop :=
  DirichletConvergenceClosed primitiveConvergenceCertificate ∧
  DirichletFunctionalEquationClosed primitiveFunctionalEquationCertificate

def DirichletSeveralComplexClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  primitive_dirichlet_bridge_closed

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  And.intro primitive_convergence_closed primitive_functional_equation_closed

theorem dirichlet_several_complex_closure (A : AdmissibleClass) : DirichletSeveralComplexClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse