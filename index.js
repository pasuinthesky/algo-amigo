mport { Selector } from 'testcafe'

fixture `Login to Web Portal`
    .page `https://localhost:5000/sso/Login?forwardTo=22&RL=1&ip2loc=US`

test('login', async t => {
    await t
        .typeText('#user_name', '')
        .typeText('#password', '')
        .click('#submitForm')
        .expect("xxxxx").ok();
})