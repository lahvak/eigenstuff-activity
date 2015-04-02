---
title: Eigenvalues and Eigenvectors
---
<script type="text/javascript" src="eigval.js"></script>

<div id="container" style="width:500px; height:500px; float:left;">
</div>
<div id="input" style="margin-left:500px; padding:2em;">
Matrix $A$:
<form id="matrixA">
<table>
<tr>
<td><input type="text" id="a11" name="a" value="1.5"></input></td>
<td><input type="text" id="a12" name="b" value=".2"></input></td>
</tr>
<tr>
<td><input type="text" id="a21" name="c" value=".2"></input></td>
<td><input type="text" id="a22" name="d" value=".5"></input></td>
</tr>
</table>
</form>
<button onclick="enter_matrix(A,'matrixA')">Change matrix</button>

$$v' = Av$$

Move the vector $v$ by dragging the red point. When $v'$ aligns with $v$ or
$-v$, you found an eigenvector.
</div>

<script type="text/javascript">
var A = new Matrix(1,1,1,1,'container');
enter_matrix(A,'matrixA')
</script>
