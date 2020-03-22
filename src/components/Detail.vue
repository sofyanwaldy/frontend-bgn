<template>
    <div>
        <div class="mt-30 card">
            
            <div class="card-header">
                <ul class="nav-tabs">
                    <li data-tab-target="#overview">Overview</li>
                    <li data-tab-target="#access"> Access</li>
                    <li data-tab-target="#network" class="active">Network</li>
                    <li data-tab-target="#security" >security</li>
                    <li data-tab-target="#group">group</li>
                    <li data-tab-target="#volumes">Volumes</li>
                    <li data-tab-target="#snapshot">snapshots</li>
                    <li data-tab-target="#operation">operation</li>
                </ul>
            </div>
            <div class="tab-content">
                <div id="overview" data-tab-content>
                    Overview Content
                </div>

                <div id="access" data-tab-content>
                    Access Content
                </div>

                <div id="network" data-tab-content class="active">

                    <h2>Network</h2>
                    <p>Attach Network</p>

                    <div class="row">
                        <div class="col-md-9">
                            <input type="text" v-model="networkField" class="form-input rounded-5">
                        </div>
                        <div class="col-md-3">
                            <span class="btn btn-success rounded-5"> Attach  </span>
                        </div>
                    </div>
                    <!-- table network --> 
                    <h2> Instance Network </h2>

                    <table class="table">
                        <thead>
                            <tr>
                                <th> Network Name </th>
                                <th> Subnet </th>
                                <th> External Connection </th>
                                <th> Private IP </th>
                                <th> Public IP </td>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(network, i) in networks" :key="i">
                                <td> {{ network.name }}</td>
                                <td> {{ network.subnet }}</td>
                                <td> {{ network.externalConnection }}</td>
                                <td> {{ network.privateIP }}</td>
                                <td> {{ network.publicIP }}</td>
                                <td > 
                                    <span class="dropdown">
                                        <i class="icon icon-action"></i>
                                        <input type="checkbox">
                                        <ul class="arrow-top">
                                            <li>
                                                <span><i class="icon icon-detach"> </i> Network</span>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <span  @click="deleteAction(i)"><i class="icon icon-remove"></i> Remove Public IP</span>
                                            </li>
                                        </ul>
                                    </span>
                                   
                                </td>

                            </tr>
                        </tbody>
                    </table>
                    
                </div>

                <div id="security" data-tab-content>
                    security Content
                </div>

                <div id="group" data-tab-content>
                    group Content
                </div>

                <div id="volumes" data-tab-content>
                    Volumes Content
                </div>

                <div id="snapshot" data-tab-content>
                    snapshot Content
                </div>

                <div id="operation" data-tab-content>
                    operation Content
                </div>
            </div>
            <Modal 
                v-show="showModal"
                title="Detach Network" 
                body="Detaching network with Public IP will detach network interface and permanently remove the associated Public IP. You will get no refund for your previous payment of Public IP"> 
            </Modal>
        </div>
    </div>
</template>
<script>
import Modal from './Modal'

export default {
    name: 'Detail',
    components: {
        Modal
    },
    data() {
        return {
            showModal: false,
            networkField: '',
            networks: [
                { 
                    name: 'public_network',
                    subnet: '192.168.0.0/20',
                    externalConnection: 'Public',
                    privateIP: '192.168.1.13',
                    publicIP: '103.93.54.133'
                },
                 { 
                    name: 'network1',
                    subnet: '10.10.0.0/20',
                    externalConnection: 'Public',
                    privateIP: '10.10.0.14',
                    publicIP: ''
                }
            ]
        }
    },
    methods: {
        modalCancel() {
            this.showModal = ! this.showModal
        },
        modalAction() {
            this.modalCancel()
            console.log('do action')
        },
        deleteAction(id) {
            this.showModal = ! this.showModal
        }
    },
    mounted() {

        const tabs = document.querySelectorAll('[data-tab-target]');
        const tabsContent = document.querySelectorAll('[data-tab-content]');
        tabs.forEach((tab) => {
            tab.addEventListener('click', () => {
                tabs.forEach((tab) => {
                    tab.removeAttribute('class')
                })
                tab.classList.add('active');
                const target = document.querySelector(tab.dataset.tabTarget);
                tabsContent.forEach((tabContent) => {
                    tabContent.classList.remove('active');
                })
                target.classList.add('active')

            })
        })

    }
    
}
</script>