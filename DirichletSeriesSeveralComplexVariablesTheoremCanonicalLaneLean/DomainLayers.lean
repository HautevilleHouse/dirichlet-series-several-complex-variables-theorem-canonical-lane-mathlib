import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.MultipleVariablesEndpointLayer

/-!
# Dirichlet series domain layers

The Dirichlet series certificate joins operator, multiple variables endpoint, and
analytic continuation layers into the theorem-local admitted series object.
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

structure DirichletSeriesCertificate where
  operatorLayer : DirichletSeriesObjectLayerCertificate
  multipleVariablesLayer : DirichletSeriesMultipleVariablesEndpointLayerCertificate
  carriageRecord : DirichletSeriesCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  seriesObjectClosed : Bool
  classicalBoundaryCarried : Bool

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse