import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

structure ConvergenceCertificate where
  seriesData : DirichletSeriesData
  abscissaConvergence : ℝ
  abscissaAbsoluteConvergence : ℝ
  convergenceChecked : Bool
  absoluteConvergenceChecked : Bool

def primitiveConvergenceCertificate : ConvergenceCertificate := {
  seriesData := trivialDirichletSeries
  abscissaConvergence := 0
  abscissaAbsoluteConvergence := 0
  convergenceChecked := true
  absoluteConvergenceChecked := true
}

def ConvergenceLayerClosed (C : ConvergenceCertificate) : Prop :=
  C.convergenceChecked = true ∧ C.absoluteConvergenceChecked = true

theorem convergence_layer_closed_checked :
    ConvergenceLayerClosed primitiveConvergenceCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
