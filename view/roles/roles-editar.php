<h1 class="page-header">
    <?php echo $alm->id_cargo != null ? $alm->nivel : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=Roles">Roles</a></li>
  <li class="active"><?php echo $alm->id_cargo != null ? $alm->nivel : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=Roles&a=Guardar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_cargo" value="<?php echo $alm->id_cargo; ?>" />
    <div class="form-group">
        <label>Nombre del cargo</label>
        <input type="text" name="nombre_cargo" value="<?php echo $alm->nombre_cargo; ?>" class="form-control" placeholder="Nombre del Rol" required />
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