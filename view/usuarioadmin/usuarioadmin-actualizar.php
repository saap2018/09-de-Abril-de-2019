<?php
$link = mysqli_connect("localhost", "root", "", "saap");
mysqli_select_db($link, "saap");
$Recordset1 =mysqli_query($link, "SELECT nivel FROM nivel") or die(mysqli_error($link));
$row_Recordset1 = mysqli_fetch_assoc($Recordset1);
$totalRows_Recordset1 = mysqli_num_rows($Recordset1);
?>
<h1 class="page-header">
    <?php echo $alm->id != null ? $alm->nombre : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=UsuarioAdmin">Usuarios</a></li>
  <li class="active"><?php echo $alm->id != null ? $alm->nombre : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=UsuarioAdmin&a=Modificar" method="post" enctype="multipart/form-data">
    <input type="hidden" nombre="id" value="<?php echo $alm->id; ?>" />
    
    <div class="form-group">
        <label>UsuarioAdmin</label>
        <input type="text" nombre="nombre" value="<?php echo $alm->usuario; ?>" class="form-control"/>
    </div>
    
    <div class="form-group">
        <label>Password</label>
        <input type="text" nombre="contrasena" value="<?php echo $alm->contrasena; ?>" class="form-control"/>
    </div>
    <div class="form-group">
        <label>Correo</label>
        <input type="text" nombre="correo" value="<?php echo $alm->correo; ?>" class="form-control" />
    </div>
    <div class="form-group">
        <label>Nombres </label>
        <input type="text" nombre="nombre" value="<?php echo $alm->nombre; ?>" class="form-control" />
    </div>
    <div class="form-group">
     <label>Rol del usuario</label>   	
          <select name="privilegio" class="form-control" required>
          <option value="<?php echo $alm->privilegio; ?>">Seleccione el rol del usuario</option>  
			<?php
do {  
?>
            <option value="<?php echo $row_Recordset1['nivel']?>"><?php echo $row_Recordset1['nivel']?></option>
            <?php
} while ($row_Recordset1 = mysqli_fetch_assoc($Recordset1));
  $rows = mysqli_num_rows($Recordset1);
  if($rows > 0) {
      mysqli_data_seek($Recordset1, 0);
	  $row_Recordset1 = mysqli_fetch_assoc($Recordset1);
	   
	  
	  
  }
 
?>
          </select>
    </div>
    <hr />
    
    <div class="text-right">
        <button class="btn btn-success">Guardar</button>
    </div>
</form>

<script>
    $(document).ready(function(){
        $("#frm-usuario").submit(function(){
            return $(this).validate();
        });
    })
</script>