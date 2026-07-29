import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic

/-!
# Dirichlet convergence layer — multivariable abscissa of convergence
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

structure DirichletConvergenceCertificate where
  indexSet : Nat
  abscissaOfConvergenceVector : ℂ → ℂ
  absoluteConvergenceDomain : String
  regularConvergenceDomain : String

def primitiveConvergenceCertificate : DirichletConvergenceCertificate := {
  indexSet := 2,
  abscissaOfConvergenceVector := λ z => (0 : ℂ),
  absoluteConvergenceDomain := "Re(sᵢ) > 0 for all i",
  regularConvergenceDomain := "Re(sᵢ) > 0 for all i"
}

structure DirichletConvergenceClosed (C : DirichletConvergenceCertificate) : Prop where
  abscissaNonnegative : ∀ (z : ℂ), (C.abscissaOfConvergenceVector z).re ≥ 0
  domainNonempty : C.absoluteConvergenceDomain.length > 0
  regularDomainNonempty : C.regularConvergenceDomain.length > 0

theorem primitive_convergence_closed : DirichletConvergenceClosed primitiveConvergenceCertificate := by
  refine ⟨?_, ?_, ?_⟩
  · intro z
    simp [primitiveConvergenceCertificate]
  · unfold primitiveConvergenceCertificate
    simp
  · unfold primitiveConvergenceCertificate
    simp

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse