class Matrix
  (A11, A12, A21, A22, board) ->
    @mat = [
      A11
      A12
      A21
      A22
    ]
    @b = JXG.JSXGraph.initBoard board,
      boundingbox:[-10,10,10,-10]
      axis:true
      grid:false
      showNavigation:false
      showCopyright:false
    @b.suspendUpdate!
    v = @b.create \point [2,2] do
      face: \o
      size: 2
      name: \v
    va = @b.create \arrow [[0,0],v]
    v2 = @b.create \point [
      ~> @mat[0]*v.X! + @mat[1]*v.Y!
      ~> @mat[2]*v.X! + @mat[3]*v.Y!
      ] do
        face: \o
        size: 2
        name: \v'
        fillColor: \black
        strokeColor: \black
    va2 = @b.create \arrow [[0,0],v2] do
      strokeColor: \black
      strokeWidth: 1
    @b.unsuspendUpdate!

  setMatrix: (A11, A12, A21, A22) ~>
    @b.suspendUpdate!
    @mat[0] = A11
    @mat[1] = A12
    @mat[2] = A21
    @mat[3] = A22
    @b.unsuspendUpdate!

!function enter_matrix A, form
  f = document.getElementById form .elements
  A.setMatrix
    [a,b,c,d] = [f.namedItem id .value |> parseFloat for id in 
      [
      \a11
      \a12
      \a21
      \a22
      ]
    ]
    .. a, b, c, d
