<h1 class="page-header">
    <?php echo $alm->id_nivel != null ? $alm->nivel : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=Roles">Roles</a></li>
  <li class="active"><?php echo $alm->id_nivel != null ? $alm->nivel : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=Roles&a=Modificar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_nivel" value="<?php echo $alm->id_nivel; ?>" />
    <div class="form-group">
        <label>Nombre del Rol</label>
        <input type="text" name="nivel" value="<?php echo $alm->nivel; ?>" class="form-control" placeholder="Nombre del Rol" required />
    </div>
    <div class="form-group">
        <label>Estado</label>
        <input type="text" name="Estado" value="<?php echo $alm->Estado; ?>" class="form-control" placeholder="Ingrese verdadero o falso" required />
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