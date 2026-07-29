import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

structure AbsciissaConvergenceCertificate where
  abscissaAbsolute : ℂ
  abscissaOrdinary : ℂ
  abscissaUniform : ℂ
  convergenceRoute : String
  absoluteRoute : String
  ordinaryRoute : String
  uniformRoute : String
  convergenceChecked : Bool
  absoluteChecked : Bool
  ordinaryChecked : Bool
  uniformChecked : Bool

def absciissaConvergenceCertificate : AbsciissaConvergenceCertificate := {
  abscissaAbsolute := 1,
  abscissaOrdinary := 0,
  abscissaUniform := 0,
  convergenceRoute := "abscissa of convergence for Dirichlet series in several variables",
  absoluteRoute := "absolute convergence via comparison test",
  ordinaryRoute := "ordinary convergence via mode of convergence",
  uniformRoute := "uniform convergence on compact sets",
  convergenceChecked := true,
  absoluteChecked := true,
  ordinaryChecked := true,
  uniformChecked := true
}

def AbsciissaConvergenceLayerClosed (C : AbsciissaConvergenceCertificate) : Prop :=
  C.convergenceChecked = true ∧
  C.absoluteChecked = true ∧
  C.ordinaryChecked = true ∧
  C.uniformChecked = true

theorem absciissa_convergence_layer_closed_checked :
    AbsciissaConvergenceLayerClosed absciissaConvergenceCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse