cube(`Cases`, {
  sql: `select * from cases`,

  measures: {
    Average: {
      sql: `count`,
      type: `avg`,
    }
  },

  dimensions: {
    country: {
      sql: `countriesAndTerritories`,
      type: `string`
    },

    dateRep: {
      sql: `dateRep`,
      type: `string`
    },

    casesQuantity: {
      sql: `count`,
      type: `number`
    },

    deaths: {
      sql: `deaths`,
      type: `number`,
    }
  }
});
