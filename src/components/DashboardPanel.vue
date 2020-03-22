<template>
    <div class="panel__bar">  
        Power State: <span class="status__running">&nbsp; Running</span>  
            <div class="pull-right b-5">
                <button class="btn btn-start rounded-5" ><span class="icon icon-start" ></span>Start</button>
                <button class="btn btn-outline-success rounded-5"><span class="icon icon-pause"></span>Pause</button>
                <button class="btn btn-outline-success rounded-5"><span class="icon icon-restart"></span>Restart</button>
                <button class="btn btn-outline-success rounded-5"><span class="icon icon-turnoff"></span>Power Off</button>
            </div>          
    </div>
</template>
<script>
export default {
    name: 'DashboardPanel'
}
</script>