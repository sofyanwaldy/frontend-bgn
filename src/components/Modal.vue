<template>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content rounded-5 text-center">
    <div class="close" @click="$parent.modalCancel()">X</div>
    <div class="modal-title">
        <strong>{{ title }}</strong>
    </div>
    <div class="modal-body">
        <p>{{ body }}</p>
        <div class="row">
            <div class="col-md-6">
                <button class="btn btn-default rounded-5" @click="$parent.modalCancel()">Cancel</button> &nbsp;
            </div>
            <div class="col-md-6">
            <button class="btn btn-success rounded-5" @click="$parent.modalAction()"> Detach</button>
            </div>
        </div>
    </div>
  </div>

</div>
</template>
<script>
export default {
    name: 'modal',
    props: ['title', 'body']
}
</script>