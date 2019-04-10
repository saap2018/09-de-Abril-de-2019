<h1 class="page-header">
    <?php echo $alm->id != null ? $alm->nombre : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=Usuario">Usuarios</a></li>
  <li class="active"><?php echo $alm->id != null ? $alm->nombre : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=Usuario&a=Modificar" method="post" enctype="multipart/form-data">
    <input type="hidden" nombre="Id" value="<?php echo $alm->iud; ?>" />
    
    <div class="form-group">
        <label>Usuario</label>
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
        <label>Rol</label>
        <input type="text" nombre="privilegio" value="<?php echo $alm->privilegio; ?>" class="form-control" />
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