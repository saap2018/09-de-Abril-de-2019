<h1 class="page-header">
    <?php echo $alm->id_tipo != null ? $alm->nombre_documento : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=TipoDocumento">Tipo de Vehiculo</a></li>
  <li class="active"><?php echo $alm->id_tipo != null ? $alm->nombre_documento : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=TipoDocumento&a=Modificar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_tipo" value="<?php echo $alm->id_tipo; ?>" />
    <div class="form-group">
        <label>Nombre del cargo</label>
        <input type="text" name="nombre_documento" value="<?php echo $alm->nombre_documento; ?>" class="form-control" placeholder="Nombre del cargo" required />
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