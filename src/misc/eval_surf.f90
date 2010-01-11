   subroutine eval_surf(u,v,tu,tv,ku,kv,coef,nctlu,nctlv,ndim,val)

!***DESCRIPTION
!
!     Written by Gaetan Kenway
!
!     Abstract eval_surf is a scalar version of the NURBS evaluation function
!
!     Description of Arguments
!     Input
!     u       - Real, u coordinate
!     v       - Real, v coordinate
!     tu      - Real,Knot vector for u-direction. Length nctlu+ku
!     tv      - Real,Knot vector for v-direction. Length nctlv+kv
!     ku      - Integer,order of B-spline in u
!     kv      - Integer,order of B-spline in v
!     coef    - Real,Array of b-sline coefficients and weights. Size (nctlu,nctlv,ndim+1)
!     nctlu   - Integer,Number of control points in u-direction
!     nctlv   - Integer,Number of control points in v-direction
!     ndim    - Integer,Number of spatial dimensions
!
!     Ouput 
!     val     - Real, Evaluated point, size ndim

     ! Input
     integer         , intent(in)          :: ku,kv,nctlu,nctlv,ndim
     double precision, intent(in)          :: u,v
     double precision, intent(in)          :: tu(nctlu+ku),tv(nctlv+kv)
     double precision, intent(in)          :: coef(nctlu,nctlv,ndim+1)

     ! Output
     double precision, intent(out)         :: val(ndim)

     ! Working
     integer                               :: i,j,dim
     double precision                      :: work(3*max(ku,kv),kv)

     print *,'Welcome to eval_surf'

     val(:) = 1.0


   end subroutine eval_surf
