<template>
  <div class="container">
    <Navbar></Navbar>
    <DashboardPanel></DashboardPanel>
    <Detail> </Detail>
  </div>
</template>

<script>

import Navbar from './components/Navbar';
import DashboardPanel from './components/DashboardPanel';
import Detail from './components/Detail';

import './assets/css/bootstrap.min.css';
import './assets/css/main.css';

export default {
  name: 'App',
  components: {
    Navbar,
    DashboardPanel,
    Detail
  }
};
</script>
