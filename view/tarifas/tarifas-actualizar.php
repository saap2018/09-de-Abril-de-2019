<h1 class="page-header">
    <?php echo $alm->id_tarifa != null ? $alm->tarifa : 'Nuevo Registro'; ?>
</h1>

<ol class="breadcrumb">
 <li><a href="?c=Cargo">Cargo</a></li>
  <li class="active"><?php echo $alm->id_tarifa != null ? $alm->tarifa : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-usuario" action="?c=Tarifas&a=Modificar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id_tarifa" value="<?php echo $alm->id_tarifa; ?>" />
    <div class="form-group">
        <label>Nombre de la tarifa</label>
        <input type="text" name="tarifa" value="<?php echo $alm->tarifa; ?>" class="form-control" placeholder="Tarifa a modificar" required />
    </div>
    <div class="form-group">
        <label>Valor Tarifa</label>
        <input type="text" name="valor" value="<?php echo $alm->valor; ?>" class="form-control" placeholder="Nuevo valor" required />
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