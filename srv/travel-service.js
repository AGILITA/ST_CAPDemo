const cds = require('@sap/cds');

class travel extends cds.ApplicationService {
    // eslint-disable-next-line no-unused-vars
    async init(srv) {
        this.on('getRandomDestination', async (req) => { 
            const {name} = req.data;
            return 'Zurich Hallo ' + name
        });
        return super.init();
    }
}
module.exports = { travel };
